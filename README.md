# Project-new

## Description
Project-new is my personal Bash script that simplifies the process of creating new projects across various frameworks and technologies. It provides a unified command-line interface for initializing projects, making it easier to start new development work regardless of the chosen technology stack.

## Usage

The basic syntax for using project-new is:

```
new [type] [app-name] [arguments...]
```

- `[type]`: The project type or framework (e.g., react, vue, django)
- `[app-name]`: The name of your new project
- `[arguments...]`: Any additional arguments to pass to the project creation command

### Examples

Create a new React app:
```
new react my-react-app
```

Crear un proyecto y abrirlo en VS Code:
```
new react my-react-app --open code
```

Crear un proyecto y abrirlo en Cursor:
```
new react my-react-app -o cursor
```

Create a new Django project with additional arguments:
```
new vite my-vite-app --template=vue
```


### Options

- `--help` or `-h`: Display help information
- `--templates` or `-t`: Show all available project templates
- `--add-template`: Add or override a custom template
- `--remove-template`: Remove a custom template
- `--open` or `-o [editor]`: Open the project in your chosen code editor after creation. Supported editors:
	- `code` → VS Code: `code .`
	- `cursor` → Cursor: `cursor .`
	- `zed` → Zed: `zed .`
	- `subl` → Sublime: `subl .`
	- `idea` → IntelliJ: `idea .`
	- `webstorm` → WebStorm: `webstorm .`
	- `phpstorm` → PhpStorm: `phpstorm .`
	- `pycharm` → PyCharm: `pycharm .`
	- `goland` → GoLand: `goland .`
	- `studio` → Android Studio: `studio .`
	- `vim` → Vim: `vim .`
	- `nvim` → Neovim: `nvim .`

## Supported Project Types


Project-new supports a wide range of project types:

[AdonisJS](https://adonisjs.com/), [Angular](https://angular.io/), [Astro](https://astro.build/), [Django](https://www.djangoproject.com/), [Express](https://expressjs.com/), [Fastify](https://www.fastify.io/), [Flask](https://flask.palletsprojects.com/), [Gatsby](https://www.gatsbyjs.com/), [Hono](https://hono.dev/), [Laravel](https://laravel.com/), [Marko](https://markojs.com/), [NestJS](https://nestjs.com/), [Next.js](https://nextjs.org/), [Nuxt](https://nuxtjs.org/), [Payload](https://payloadcms.com/), [Poem](https://docs.rs/poem), [Qwik](https://qwik.builder.io/), [Rails](https://rubyonrails.org/), [React](https://reactjs.org/), [RedwoodJS](https://redwoodjs.com/), [Remix](https://remix.run/), [Rust](https://www.rust-lang.org/), [SolidJS](https://www.solidjs.com/), [Spring](https://spring.io/), [Strapi](https://strapi.io/), [Svelte](https://svelte.dev/), [SvelteKit](https://kit.svelte.dev/), [T3](https://create.t3.gg/), [TanStack](https://tanstack.com/), [Vite](https://vitejs.dev/), [Vue](https://vuejs.org/)

## Installation

### Install with Homebrew (recommended)

If you use Homebrew, you can install project-new with:

```bash
brew install eypacha/project-new/project-new
```

---

### Quick install with curl

The fastest way to install is with a single command:

```bash
curl -fsSL https://raw.githubusercontent.com/eypacha/project-new/master/install.sh | bash
```

This will:
- Create $HOME/bin if it doesn't exist
- Download the latest script to $HOME/bin/new
- Make it executable
- Add $HOME/bin to your PATH if needed (for zsh or bash)

After installation, restart your terminal or run:

```bash
source ~/.zshrc   # or source ~/.bashrc
```

You can now use the `new` command from anywhere in your terminal!

---

#### Manual install (alternative)

If you prefer, you can follow these steps manually:

```bash
# 1. Create the bin directory in your home if it doesn't exist
mkdir -p "$HOME/bin"

# 2. Download the script
curl -fsSL https://raw.githubusercontent.com/eypacha/project-new/master/bin/new -o "$HOME/bin/new"

# 3. Make it executable
chmod +x "$HOME/bin/new"

# 4. Add $HOME/bin to your PATH if it's not already there
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc  # or ~/.bashrc

# 5. Reload your shell configuration
source ~/.zshrc   # or source ~/.bashrc
```

Now you can use the `new` command from anywhere in your terminal!

For detailed help and all available options, you can run:

```bash
./new --help
```

### Troubleshooting

If you encounter any issues:

- Make sure you have the necessary permissions to execute the script.
- If the `new` command is not recognized, try restarting your terminal or running `source ~/.bashrc` (or `source ~/.zshrc` for Zsh users) again.
- Check that the path in your `.bashrc` or `.zshrc` file is correct.

For more help, please [open an issue](https://github.com/eypacha/project-new/issues) on our GitHub repository.

## Contributing

Contributions to Project-new are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.