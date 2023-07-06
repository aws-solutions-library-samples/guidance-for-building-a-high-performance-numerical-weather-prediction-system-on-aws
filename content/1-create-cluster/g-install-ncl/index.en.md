---
title: Install NCL
weight: 26
--- 

1. Next we’ll install the [NCAR Command Language (NCL)](https://www.ncl.ucar.edu/). We will use NCL to visualize the output in the next few sections.

    ```bash
    spack install ncl^hdf5@1.8.22
    ````

    | Spack Flag     | Description |
    | -------------- | ----------- |
    | `ncl`          | Install the NCL package. |
    | `^hdf5@1.8.22` | Pin the HDF4 dependency at version 1.8.22. |

    This will take about 4 minutes to complete.

2. To test and make sure that `ncl` has been set up correctly, run:
    
    ```bash
    spack load ncl
    ncl -h
    spack unload ncl
    ```

    You should see the following output:

    ![Install NCL output](/static/images/1-installncl.png)

3. We will also set our default NCL X11 window size to be 1000x1000.

    ```bash
    cat << EOF > $HOME/.hluresfile
    *windowWorkstationClass*wkWidth  : 1000
    *windowWorkstationClass*wkHeight : 1000
    EOF
    ```
