#define PY_SSIZE_T_CLEAN
#include <Python.h>
#include <stdio.h>

int main()
{
    Py_Initialize();

    PyObject *pModule;
    PyObject *pIniFunc, *pFinFunc, *pSendFunc;
    PyObject *pArgs;
    PyObject *pValue;

    printf("importing modules\n");
    PyRun_SimpleString("import sys");
    PyRun_SimpleString("sys.path.append('./')");
    PyRun_SimpleString("import fpgaComTest as test");

    PyRun_SimpleString("test.ser_init()");
    while (getchar() != 'q')
    {
        PyRun_SimpleString("test.ser_send()");
    }
    PyRun_SimpleString("test.ser_final()");
    
    Py_Finalize();
    return 0;
}