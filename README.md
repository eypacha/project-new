# Proyect-new

## Description
Proyect-new is a versatile Bash script that simplifies the process of creating new projects across various frameworks and technologies. It provides a unified command-line interface for initializing projects, making it easier to start new development work regardless of the chosen technology stack.

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/proyect-new.git
   ```

2. Make the script executable:
   ```
   chmod +x proyect-new.sh
   ```

3. (Optional) Add the script to your PATH for easier access:
   ```
   echo 'export PATH=$PATH:/path/to/proyect-new' >> ~/.bashrc
   source ~/.bashrc
   ```

## Usage

The basic syntax for using Proyect-new is:

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
new django my-django-project --template=https://github.com/example/django-template/archive/main.zip
```

### Available Commands

- `new -h` or `new --help`: Display help information
- `new -t` or `new --templates`: Show all available project templates

## Supported Project Types

Proyect-new supports a wide range of project types, including but not limited to:

- Vite
- Nuxt
- Laravel
- React
- Angular
- Django
- Flask
- Rails
- Spring
- Vue
- Gatsby
- Svelte
- Next.js
- Marko
- Payload

## Customization

(Note: This feature is planned for future implementation)

Users will be able to add their own custom templates using the `new --add-template` command. This will allow for easy expansion of the tool to support additional frameworks or custom project setups.

## Contributing

Contributions to Proyect-new are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.