/* SPDX-License-Identifier: GPL-2.0 */
#undef TRACE_SYSTEM
#define TRACE_SYSTEM ydp

#if !defined(_TRACE_YDP_H) || defined(TRACE_HEADER_MULTI_READ)
#define _TRACE_YDP_H

#include <linux/netdevice.h>
#include <linux/cpf_filter.h>
#include <linux/tracepoint.h>
#include <linux/cpf.h>

#define __YDP_ACT_MAP(FN)	\
	FN(ABORTED)		\
	FN(DROP)		\
	FN(PASS)		\
	FN(TX)			\
	FN(REDIRECT)

#define __YDP_ACT_TP_FN(x)	\
	TRACE_DEFINE_ENUM(YDP_##x);
#define __YDP_ACT_SYM_FN(x)	\
	{ YDP_##x, #x },
#define __YDP_ACT_SYM_TAB	\
	__YDP_ACT_MAP(__YDP_ACT_SYM_FN) { -1, 0 }
__YDP_ACT_MAP(__YDP_ACT_TP_FN)

TRACE_EVENT(ydp_exception,

	TP_PROTO(const struct net_device *dev,
		 const struct cpf_prog *ydp, u32 act),

	TP_ARGS(dev, ydp, act),

	TP_STRUCT__entry(
		__field(int, prog_id)
		__field(u32, act)
		__field(int, ifindex)
	),

	TP_fast_assign(
		__entry->prog_id	= ydp->aux->id;
		__entry->act		= act;
		__entry->ifindex	= dev->ifindex;
	),

	TP_printk("prog_id=%d action=%s ifindex=%d",
		  __entry->prog_id,
		  __print_symbolic(__entry->act, __YDP_ACT_SYM_TAB),
		  __entry->ifindex)
);

DECLARE_EVENT_CLASS(ydp_redirect_template,

	TP_PROTO(const struct net_device *dev,
		 const struct cpf_prog *ydp,
		 int to_ifindex, int err,
		 const struct cpf_map *map, u32 map_index),

	TP_ARGS(dev, ydp, to_ifindex, err, map, map_index),

	TP_STRUCT__entry(
		__field(int, prog_id)
		__field(u32, act)
		__field(int, ifindex)
		__field(int, err)
		__field(int, to_ifindex)
		__field(u32, map_id)
		__field(int, map_index)
	),

	TP_fast_assign(
		__entry->prog_id	= ydp->aux->id;
		__entry->act		= YDP_REDIRECT;
		__entry->ifindex	= dev->ifindex;
		__entry->err		= err;
		__entry->to_ifindex	= to_ifindex;
		__entry->map_id		= map ? map->id : 0;
		__entry->map_index	= map_index;
	),

	TP_printk("prog_id=%d action=%s ifindex=%d to_ifindex=%d err=%d",
		  __entry->prog_id,
		  __print_symbolic(__entry->act, __YDP_ACT_SYM_TAB),
		  __entry->ifindex, __entry->to_ifindex,
		  __entry->err)
);

DEFINE_EVENT(ydp_redirect_template, ydp_redirect,
	TP_PROTO(const struct net_device *dev,
		 const struct cpf_prog *ydp,
		 int to_ifindex, int err,
		 const struct cpf_map *map, u32 map_index),
	TP_ARGS(dev, ydp, to_ifindex, err, map, map_index)
);

DEFINE_EVENT(ydp_redirect_template, ydp_redirect_err,
	TP_PROTO(const struct net_device *dev,
		 const struct cpf_prog *ydp,
		 int to_ifindex, int err,
		 const struct cpf_map *map, u32 map_index),
	TP_ARGS(dev, ydp, to_ifindex, err, map, map_index)
);

#define _trace_ydp_redirect(dev, ydp, to)		\
	 trace_ydp_redirect(dev, ydp, to, 0, NULL, 0);

#define _trace_ydp_redirect_err(dev, ydp, to, err)	\
	 trace_ydp_redirect_err(dev, ydp, to, err, NULL, 0);

DEFINE_EVENT_PRINT(ydp_redirect_template, ydp_redirect_map,
	TP_PROTO(const struct net_device *dev,
		 const struct cpf_prog *ydp,
		 int to_ifindex, int err,
		 const struct cpf_map *map, u32 map_index),
	TP_ARGS(dev, ydp, to_ifindex, err, map, map_index),
	TP_printk("prog_id=%d action=%s ifindex=%d to_ifindex=%d err=%d"
		  " map_id=%d map_index=%d",
		  __entry->prog_id,
		  __print_symbolic(__entry->act, __YDP_ACT_SYM_TAB),
		  __entry->ifindex, __entry->to_ifindex,
		  __entry->err,
		  __entry->map_id, __entry->map_index)
);

DEFINE_EVENT_PRINT(ydp_redirect_template, ydp_redirect_map_err,
	TP_PROTO(const struct net_device *dev,
		 const struct cpf_prog *ydp,
		 int to_ifindex, int err,
		 const struct cpf_map *map, u32 map_index),
	TP_ARGS(dev, ydp, to_ifindex, err, map, map_index),
	TP_printk("prog_id=%d action=%s ifindex=%d to_ifindex=%d err=%d"
		  " map_id=%d map_index=%d",
		  __entry->prog_id,
		  __print_symbolic(__entry->act, __YDP_ACT_SYM_TAB),
		  __entry->ifindex, __entry->to_ifindex,
		  __entry->err,
		  __entry->map_id, __entry->map_index)
);

#define _trace_ydp_redirect_map(dev, ydp, fwd, map, idx)		\
	 trace_ydp_redirect_map(dev, ydp, fwd ? fwd->ifindex : 0,	\
				0, map, idx)

#define _trace_ydp_redirect_map_err(dev, ydp, fwd, map, idx, err)	\
	 trace_ydp_redirect_map_err(dev, ydp, fwd ? fwd->ifindex : 0,	\
				    err, map, idx)

#endif /* _TRACE_YDP_H */

#include <trace/define_trace.h>
