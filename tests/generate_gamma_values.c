#include <stdio.h>
#include <math.h>
#include <string.h>

void generate_tb_signal_in_files(float gamma);
void generate_tb_expected_values_files(float gamma);
void generate_case_statements(float gamma, int index);

int main (int argc, char *argv[])
{
    float gamma_values[] = {0.6, 0.7, 0.8, 0.9,
                                1.1, 1.2, 1.3, 1.4, 1.5};

    for (int index = 0; index <= 8; index++) {
        // generate_tb_signal_in_files(gamma_values[index]);
        // generate_tb_expected_values_files(gamma_values[index]);
        generate_case_statements(gamma_values[index], index);
    }

}

void generate_tb_signal_in_files(float gamma) {

    for (int pixelvalue = 0; pixelvalue <= 255; pixelvalue++)
    {
        FILE *fp1;
        char filename1[30];
        sprintf(filename1, "%.2f_signal_in.txt", gamma);
        fp1 = fopen(filename1, "a");
        if (pixelvalue != 255)
            fprintf(fp1, "%.2x // %d\n", pixelvalue, pixelvalue);
        else
            fprintf(fp1, "%.2x // %d", pixelvalue, pixelvalue);     
        fclose(fp1);
    }
}

void generate_tb_expected_values_files(float gamma) {


    for (int pixelvalue = 0; pixelvalue <= 255; pixelvalue++)
    {
        float gammapixel = (255 * pow(((float)pixelvalue / 255), gamma));
        FILE *fp2;
        char filename2[30];
        sprintf(filename2, "%.2f_expected_values.txt", gamma);
        fp2 = fopen(filename2, "a");
        if (pixelvalue != 255)
            fprintf(fp2, "%.2x // %d\n", (int)gammapixel, (int)gammapixel);
        else
            fprintf(fp2, "%.2x // %d", (int)gammapixel, (int)gammapixel);
        
        fclose(fp2);
    }
}

void generate_case_statements(float gamma, int index)
{

    FILE *fp3;
    char filename3[30];
    sprintf(filename3, "case_statements.txt");
    fp3 = fopen(filename3, "a");
    fprintf(fp3, "\tif (iSWITCH[%d])\n", ++index);
    fprintf(fp3, "\t\tbegin\n");
    fprintf(fp3, "\t\t\tcase(iY)\n");

    for (int pixelvalue = 0; pixelvalue <= 255; pixelvalue++)
    {  
        float gammapixel = (255 * pow(((float)pixelvalue / 255), gamma));
        fprintf(fp3, "\t\t\t\t8'd%d	:	result<=8'd%d;\n", pixelvalue, (int)gammapixel);
    }

    fprintf(fp3, "\t\t\tendcase\n");
    fprintf(fp3, "\t\tend\n");
    // fprintf(fp3,"\tend\n");  
    fclose(fp3);
}
