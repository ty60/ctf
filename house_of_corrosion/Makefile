targets := primitive_1 primitive_2 primitive_3 house_of_corrosion


all: $(targets)

%: %.c
	gcc -o $@ $^

clean:
	rm -f $(targets)
