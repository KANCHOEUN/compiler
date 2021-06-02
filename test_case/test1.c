struct pos
{
    int x, y;
};

int main()
{
    struct pos square[4];
    int i;
    for (i = 0; i < 4; i++)
    {
        scanf("%d %d", square[i].x, square[i].y);
        printf("%d %d\n", square[i].x, square[i].y);
    }
    return 0;
}
