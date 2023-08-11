# Faculty application materials all in one place

---

## Initialize the project folder

```bash
git clone https://github.com/wyywyy23/faculty_all_in_one.git
```

or, if you prefer [ssh](https://docs.github.com/en/authentication/connecting-to-github-with-ssh):

```bash
git clone git@github.com:wyywyy23/faculty_all_in_one.git
```

Then, initialize the common submodules by running:

```bash
cd faculty_all_in_one
git submodule update --init --recursive
```

You can check out the latest development branch of the device library with:

```bash
git submodule foreach --recursive git checkout master
```

or, merge updates (if any) later on with:

```bash
git submodule update --remote --merge
```
