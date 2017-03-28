using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TP3.Negocio
{
    public class Util
    {
        public static bool mandarNotificacion(string emails, string paciente, string gravedad, string medico, string estado, string historia,string motivo)
        {
            bool enviado = false;
            System.Net.Mail.MailMessage msj = new System.Net.Mail.MailMessage();
            msj.To.Add(emails);

            //Asunto
            if (estado == "Aprobado")
            {
                msj.Subject = "Aprobación de Paciente UCI";
            }
            else
            {
                msj.Subject = "Desaprobación de Paciente UCI";
            }

            msj.SubjectEncoding = System.Text.Encoding.UTF8;

            msj.Body = "<br /> <h2 style='color:#04B404'>Notificación automática - Sistema Integrado Clinica Ricardo Palma</h2> <br />" +
            "Ingreso de paciente a UCI : <b style='color:blue'>" + estado + " </b> <br />" +
            "Paciente: <b> " + paciente + " </b><br />" +
            "Historia Clínica: <b> " + historia + " </b><br />" +
            "Gravedad: <b> " + gravedad + " </b><br />" +
            "Motivo desaprobacion: <b> " + motivo + " </b><br />" +
            "Medico: <b> " + medico + " </b><br />" +
             "Fecha y hora de:  <b>" + DateTime.Now.ToString() + " </b>";
            msj.BodyEncoding = System.Text.Encoding.UTF8;
            msj.IsBodyHtml = true;
            msj.From = new System.Net.Mail.MailAddress("modulouci@gmail.com");
            //cliente de correo:
            System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();
            cliente.Credentials =
            new System.Net.NetworkCredential("modulouci@gmail.com", "zeballos");
            cliente.Port = 587;
            cliente.EnableSsl = true;
            cliente.Host = "smtp.gmail.com";
            try
            {
                cliente.Send(msj);
                enviado = true;
            }
            catch (System.Net.Mail.SmtpException)
            {
                enviado = false;
            }

            return enviado;
        }

    }
}
