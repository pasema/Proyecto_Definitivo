#ifndef GUIPANEL_H
#define GUIPANEL_H

#include <QWidget>
#include <QSerialPort>
#include <QMessageBox>
#include "usb_commands_table.h"

namespace Ui {
class GUIPanel;
}


class GUIPanel : public QWidget
{
    Q_OBJECT
    
public:
    //GUIPanel(QWidget *parent = 0);
    explicit GUIPanel(QWidget *parent = nullptr);
    ~GUIPanel(); // Da problemas
    
private slots:
    void readRequest();
    void on_pingButton_clicked();
    void on_runButton_clicked();
    void on_statusButton_clicked();

    void on_rojo_stateChanged(int arg1);

    void on_verde_stateChanged(int arg1);

    void on_azul_stateChanged(int arg1);

    void on_Gpio_Pwm_currentIndexChanged(int index);

    void on_horizontalScrollBar_Rojo_sliderMoved(int position);



    void on_horizontalScrollBar_Verde_sliderMoved(int position);

    void on_horizontalScrollBar_Azul_sliderMoved(int position);

    void on_colorWheel_colorChanged(const QColor &arg1);

    void on_horizontalScrollBar_Rojo_sliderReleased();

    void on_horizontalScrollBar_Verde_sliderReleased();

    void on_horizontalScrollBar_Azul_sliderReleased();

    void on_comprobar_clicked();

    void on_comboBox_currentIndexChanged(int index);

    void on_verticalSlider_valueChanged(int value);

    void on_comprobar_temp_clicked();



    void on_UPLOAD_clicked();

    void on_PROGRAMAR_clicked();

    void on_Delete_clicked();

    void on_Clear_All_clicked();

private: // funciones privadas
    void pingDevice();
    void startSlave();
    void processError(const QString &s);
    void activateRunButton();
    void pingResponseReceived();
    void cambiaLEDs(void);
    void cambiaBrillo(void);

private:
    Ui::GUIPanel *ui;
    int transactionCount;
    bool fConnected;
    QSerialPort serial;
    QByteArray incommingDataBuffer;
    QString LastError;
    QMessageBox ventanaPopUp;
    uint32_t valoresBrillo[3]={0,0,0};
    programacion miArray[20];
    int N_elementos=0;

};

#endif // GUIPANEL_H
