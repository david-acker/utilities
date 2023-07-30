# Utilities

## lift

> Move all files and directories in the current directory into the parent directory, and delete the current directory.

<details>
  
  <summary>Documentation</summary>

```bash
./lift
```

No parameters.

### Example Usage

In directory `old_folder` with a parent directory `main_directory`:

```bash
./lift
```

When called, moves all files and directory into `main_directory`.

</details>

## drop

> Move all files and directories in the current directory into a new child directory.

<details>
  
  <summary>Documentation</summary>

```bash
./drop <new_directory_name>
```

Parameters:

- _new_directory_name:_ Name of the new destination directory.

### Example Usage

```bash
./drop backup_2023
```

When called, moves all files and directories into `backup_2023`.

</details>
