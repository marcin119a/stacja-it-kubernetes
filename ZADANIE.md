## Zadanie: Porównanie modeli Whisper tiny vs small

Celem zadania jest zmiana modelu rozpoznawania mowy z `whisper-tiny` na `whisper-small` oraz porównanie jakości transkrypcji.

### Kroki

1. Zmień konfigurację modelu w workerze:

```python
model_name = "openai/whisper-small"
(zamiast)

model_name = "openai/whisper-tiny"
```
Uruchom ponownie kontenery:

docker compose up --build



W UI Gradio:
- wrzuc plik audio z https://github.com/marcin119a/data/blob/main/Alloy_tts-1_1x_2024-10-28T09_42_03-535Z.mp3,
- kliknij submit,
- odbierz transkrypcje wygenerowana przez model `openai/whisper-small`.

## Architektura

- **UI**: Gradio serwer (port 7860)
- **Worker**: Celery worker z modelem `openai/whisper-small`
- **Redis**: Broker i backend dla Celery (port 6379)

## Komponenty

- `api/` - aplikacja Gradio
- `worker/` - Celery worker z modelem Whisper Tiny
- `docker-compose.yml` - Konfiguracja całego stacku