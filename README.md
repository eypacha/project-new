# Project-new

## Description
Project-new is mu personal Bash script that simplifies the process of creating new projects across various frameworks and technologies. It provides a unified command-line interface for initializing projects, making it easier to start new development work regardless of the chosen technology stack.

## Installation

Follow these steps to install and set up project-new:

1. Clone the repository:
   ```bash
   git clone https://github.com/eypacha/project-new.git
   ```

2. Make the script executable:
   ```bash
   cd project-new && chmod +x bin/new
   ```

3. Add the script to your PATH for easier access:
   
   For Bash users:
   ```bash
   echo 'export PATH=$PATH:'"$PWD/bin" >> ~/.bashrc
   source ~/.bashrc
   ```
   
   For Zsh users:
   ```bash
   echo 'export PATH=$PATH:'"$PWD/bin" >> ~/.zshrc
   source ~/.zshrc
   ```

Now you can use the `new` command from anywhere in your terminal!

### Troubleshooting

If you encounter any issues:

- Make sure you have the necessary permissions to execute the script.
- If the `new` command is not recognized, try restarting your terminal or running `source ~/.bashrc` (or `source ~/.zshrc` for Zsh users) again.
- Check that the path in your `.bashrc` or `.zshrc` file is correct.

For more help, please [open an issue](https://github.com/eypacha/project-new/issues) on our GitHub repository.

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

Create a new Django project with additional arguments:
```
new vite my-vite-app --template=vue
```

### Available Commands

- `new -h` or `new --help`: Display help information
- `new -t` or `new --templates`: Show all available project templates

## Supported Project Types

Project-new supports a wide range of project types:

[Angular](https://angular.io/), [Astro](https://astro.build/), [Django](https://www.djangoproject.com/), [Flask](https://flask.palletsprojects.com/), [Gatsby](https://www.gatsbyjs.com/), [Laravel](https://laravel.com/), [Marko](https://markojs.com/), [Next.js](https://nextjs.org/), [Nuxt](https://nuxtjs.org/), [Payload](https://payloadcms.com/), [React](https://reactjs.org/), [Rails](https://rubyonrails.org/), [Svelte](https://svelte.dev/), [Spring](https://spring.io/), [Vite](https://vitejs.dev/), [Vue](https://vuejs.org/)


## Customization

(Note: This feature is planned for future implementation)

Users will be able to add their own custom templates using the `new --add-template` command. This will allow for easy expansion of the tool to support additional frameworks or custom project setups.

## TODO

- [ ] Add tests for the script functionality.
- [ ] Add more project templates.
- [ ] Implement "add-template" functionality.
- [ ] Add the ability to configure the preferred package manager.

## Contributing

Contributions to Project-new are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.