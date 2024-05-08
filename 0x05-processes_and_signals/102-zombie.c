#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

/**
 * infinite_while - Infinite loop to keep the program running
 *
 * Return: Always 0
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - Creates 5 zombie processes.
 *
 * Return: Always 0.
 */
int main(void)
{
	int i;
	pid_t zombie_pid;

	for (i = 0; i < 5; i++)
	{
		zombie_pid = fork();
		if (zombie_pid > 0)
		{
			printf("Zombie process created, PID: %d\n", zombie_pid);
		}
		else
		{
			return (0);
		}
	}

	return (infinite_while());
}
