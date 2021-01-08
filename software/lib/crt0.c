extern int main ();
extern int inituart ();
 
void _start() {
    inituart();
    main();
}