@echo off
chcp 65001 >nul
title LLM 啟用器

:menu
cls

echo.
echo ==========================================
echo           LLM 智能啟用選單
echo ==========================================
echo.
echo 【35B】
echo.
echo 1. 20GB顯存 116 Token/s (Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-Q4_K_M) 含圖
echo 2. 22GB顯存 116 Token/s (Qwen3.6-35B-A3B-UD-Q4_K_M) 含圖
echo 3. 19GB顯存  34 Token/s (Gemopus-4-31B-it-Q4_K_M) 含圖
echo 4. 19GB顯存  35 Token/s (gemma-4-31B-it-Q4_K_M) 含圖
echo.
echo 【27B】
echo.
echo 5. 40GB顯存  27 Token/s (Huihui-Qwen3.6-27B-abliterated-ggml-model-Q8_0) 含圖
echo 6. 16GB顯存  39 Token/s (Qwen3.6-27B-Q4_K_M) 含圖
echo 7. 16GB顯存 110 Token/s (Gemma4-26B-A4B-Uncensored-HauhauCS-Balanced-Q4_K_M)
echo.
echo 【12B】
echo.
echo 8. 13GB顯存  35 Token/s (gemma-4-12b-it-UD-Q8_K_XL)
echo 9. 13GB顯存  35 Token/s (gemma4-opus48-Q8_0)
echo 10.24GB顯存  26 Token/s (gemma-4-12B-it-bf16)
echo 11.19GB顯存 120 Token/s (Holo-3.1-35B-A3B-q4_k_m) 含圖
echo 12.13GB顯存  52 Token/s (gemma-4-12b-it-UD-Q8_K_XL)
echo 13.13GB顯存  52 Token/s (Qwythos-9B-Claude-Mythos-5-1M-MTP-BF16)
echo 14.23GB顯存  52 Token/s (Qwen-AgentWorld-35B-A3B-UD-Q4_K_M)
echo 15.20GB顯存  52 Token/s (ornith-1.0-35b-Q4_K_M)
echo 16.20GB顯存  52 Token/s (ornith-1.0-35b-Q8_0)
echo 17.20GB顯存  52 Token/s (ornith-1.0-35b-Q6_K)
echo 18.24GB顯存  52 Token/s (Qwen3.6-40B-Deck-Opus-NEO-CODE-HERE-2T-OT-Q4_K_M)
echo 19.24GB顯存  52 Token/s (Qwythos-9B-Claude-Mythos-5-1M-MTP-Q8_0)
echo 20.24GB顯存  52 Token/s (ThinkingCap-Qwen3.6-27B-Q8_0)
echo 21.24GB顯存  52 Token/s (Agents-A1-Q4_K_M.gguf)
echo 22. 2GB顯存  52 Token/s (MiniCPM5-1B-Claude-Opus-Fable5-Thinking-Q4_K_M)
echo 23. 2GB顯存  52 Token/s (Qwen3.5-0.8B-Q4_K_M)



echo.
echo 0. 退出
echo.

set /p choice=請選擇模式：

if "%choice%"=="1" goto M1
if "%choice%"=="2" goto M2
if "%choice%"=="3" goto M3
if "%choice%"=="4" goto M4
if "%choice%"=="5" goto M5
if "%choice%"=="6" goto M6
if "%choice%"=="7" goto M7
if "%choice%"=="8" goto M8
if "%choice%"=="9" goto M9
if "%choice%"=="10" goto M10
if "%choice%"=="11" goto M11
if "%choice%"=="12" goto M12
if "%choice%"=="13" goto M13
if "%choice%"=="14" goto M14
if "%choice%"=="15" goto M15
if "%choice%"=="16" goto M16
if "%choice%"=="17" goto M17
if "%choice%"=="18" goto M18
if "%choice%"=="19" goto M19
if "%choice%"=="20" goto M20
if "%choice%"=="21" goto M21
if "%choice%"=="22" goto M22
if "%choice%"=="23" goto M23
if "%choice%"=="24" goto M24
if "%choice%"=="25" goto M25
if "%choice%"=="26" goto M26
if "%choice%"=="27" goto M27
if "%choice%"=="28" goto M28
if "%choice%"=="29" goto M29
if "%choice%"=="30" goto M30
if "%choice%"=="31" goto M31
if "%choice%"=="0" exit

goto menu

:M1
cls
echo 啟用 Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-Q4_K_M...
llama-server ^
-m F:\AI\models\Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-Q4_K_M.gguf ^
--mmproj F:\AI\models\mmproj-Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-f16.gguf ^
--api-key "chris1798" ^
-ngl 999 ^
-c 131072 ^
--jinja ^
--tensor-split 40,60 ^
--flash-attn on ^
--cont-batching ^
--reasoning off ^
--reasoning-budget 256 ^
--batch-size 4096 ^
--ubatch-size 1024 ^
--cache-type-k q8_0 ^
--cache-type-v q8_0 ^
--host 0.0.0.0 ^
--port 8080
goto end

:M2
cls
echo 啟用 Qwen3.6-35B-A3B-UD-Q4_K_M...
llama-server ^
-m F:\AI\models\Qwen3.6-35B-A3B-UD-Q4_K_M.gguf ^
--mmproj F:\AI\models\mmproj-Qwen3.6-35B-A3B-F16.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 262144 ^
--spec-type draft-mtp ^
--jinja ^
--tensor-split 40,60 ^
--flash-attn on ^
--batch-size 4096 ^
--ubatch-size 1024 ^
--cache-type-k q8_0 ^
--cache-type-v q8_0 ^
--host 0.0.0.0 ^
--port 8080
goto end

:M3
cls
echo 啟用 Gemopus-4-31B-it-Q4_K_M...
llama-server ^
-m F:\AI\models\Gemopus-4-31B-it-Q4_K_M.gguf ^
--mmproj F:\AI\models\mmproj-Gemopus-4-31B-it-Q4_K_M.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 262144 ^
--jinja ^
--tensor-split 40,60 ^
--flash-attn on ^
--batch-size 4096 ^
--ubatch-size 1024 ^
--cache-type-k q8_0 ^
--cache-type-v q8_0 ^
--host 0.0.0.0 ^
--port 8080
goto end

:M4
cls
echo 啟用 gemma-4-31B-it-Q4_K_M...
llama-server ^
-m F:\AI\models\gemma-4-31B-it-Q4_K_M.gguf ^
--mmproj F:\AI\models\mmproj-gemma-4-31B-it-F16.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 262144 ^
--jinja ^
--tensor-split 40,60 ^
--flash-attn on ^
--batch-size 4096 ^
--ubatch-size 1024 ^
--cache-type-k q8_0 ^
--cache-type-v q8_0 ^
--host 0.0.0.0 ^
--port 8080
goto end

:M5
cls
echo 啟用 Huihui-Qwen3.6-27B-abliterated-ggml-model-Q8_0...
llama-server ^
-m F:\AI\models\Huihui-Qwen3.6-27B-abliterated-ggml-model-Q8_0.gguf ^
--mmproj F:\AI\models\mmproj-Huihui-Qwen3.6-27B-abliterated-ggml-model-f16.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 131072 ^
--jinja ^
--tensor-split 40,60 ^
--reasoning off ^
--reasoning-budget 256 ^
--flash-attn on ^
--batch-size 2048 ^
--ubatch-size 512 ^
--cache-type-k q8_0 ^
--cache-type-v q8_0 ^
--host 0.0.0.0 ^
--port 8080
goto end

:M6
cls
echo 啟用 Qwen3.6-27B-Q4_K_M...
llama-server ^
-m F:\AI\models\Qwen3.6-27B-Q4_K_M.gguf ^
--mmproj F:\AI\models\mmproj-Qwen3.6-27B-F16.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 131072 ^
--image-min-tokens 1024 ^
--jinja ^
--reasoning off ^
--tensor-split 40,60 ^
--flash-attn on ^
--batch-size 4096 ^
--ubatch-size 1024 ^
--cache-type-k q8_0 ^
--cache-type-v q8_0 ^
--host 0.0.0.0 ^
--port 8080
goto end

:M7
cls
echo 啟用 Gemma4-26B-A4B-Uncensored-HauhauCS-Balanced-Q4_K_M...
llama-server ^
-m F:\AI\models\Gemma4-26B-A4B-Uncensored-HauhauCS-Balanced-Q4_K_M.gguf ^
--mmproj F:\AI\models\mmproj-Gemma4-26B-A4B-Uncensored-HauhauCS-Balanced-f16.gguf ^
--model-draft F:\AI\models\gemma-4-26B-A4B-it-qat-assistant-MTP-Q8_0.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 262144 ^
--jinja ^
--spec-type draft-mtp ^
--spec-draft-n-max 4 ^
--tensor-split 40,60 ^
--flash-attn on ^
--batch-size 4096 ^
--ubatch-size 1024 ^
--cache-type-k q8_0 ^
--cache-type-v q8_0 ^
--host 0.0.0.0 ^
--port 8080
goto end

:M8
cls
echo 啟用 gemma-4-12b-it-UD-Q8_K_XL...
llama-server ^
-m F:\AI\models\gemma-4-12b-it-UD-Q8_K_XL.gguf ^
--mmproj F:\AI\models\mmproj-gemma-4-12B-it-bf16.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 262144 ^
--jinja ^
--tensor-split 40,60 ^
--flash-attn on ^
--batch-size 4096 ^
--ubatch-size 1024 ^
--cache-type-k q8_0 ^
--cache-type-v q8_0 ^
--host 0.0.0.0 ^
--port 8080
goto end

:M9
cls
echo 啟用 gemma4-opus48-Q8_0...
llama-server ^
-m F:\AI\models\gemma4-opus48-Q8_0.gguf ^
--mmproj F:\AI\models\mmproj-gemma-4-12B-it-bf16.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 262144 ^
--jinja ^
--tensor-split 40,60 ^
--flash-attn on ^
--batch-size 4096 ^
--ubatch-size 1024 ^
--cache-type-k q8_0 ^
--cache-type-v q8_0 ^
--host 0.0.0.0 ^
--port 8080
goto end

:M10
cls
echo 啟用 gemma-4-12B-it-bf16...
llama-server ^
-m F:\AI\models\gemma-4-12B-it-bf16.gguf ^
--mmproj F:\AI\models\mmproj-gemma-4-12B-it-bf16.gguf ^
--api-key "chris1798" ^
-ngl 999 ^
-c 131072 ^
--jinja ^
--tensor-split 40,60 ^
--flash-attn on ^
--batch-size 4096 ^
--ubatch-size 1024 ^
--cache-type-k q8_0 ^
--cache-type-v q8_0 ^
--temp 0.2 ^
--top-p 0.9 ^
--repeat-penalty 1.05 ^
--host 0.0.0.0 ^
--port 8080
goto end

:M11
cls
echo 啟用 Holo-3.1-35B-A3B-q4_k_m...
llama-server ^
-m F:\AI\models\Holo-3.1-35B-A3B-q4_k_m.gguf ^
--mmproj F:\AI\models\mmproj-Holo-3.1-35B-A3B-f16.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 262144 ^
--jinja ^
--tensor-split 40,60 ^
--flash-attn on ^
--batch-size 4096 ^
--ubatch-size 1024 ^
--cache-type-k q8_0 ^
--cache-type-v q8_0 ^
--host 0.0.0.0 ^
--port 8080
goto end

:M12
cls
echo 啟用 gemma4-v2-Q8_0...
llama-server ^
-m F:\AI\models\gemma4-v2-Q8_0.gguf ^
--model-draft F:\AI\models\gemma-4-12B-it-MTP-Q8_0.gguf ^
--spec-type draft-mtp --spec-draft-n-max 4 ^
--api-key "chris1798" ^
-ngl 99 ^
-ngld 99 ^
-c 262144 ^
--jinja ^
--tensor-split 40,60 ^
-fa on ^
--host 0.0.0.0 ^
--port 8080
goto end
:end

:M13
cls
echo 啟用 Qwythos-9B-Claude-Mythos-5-1M-MTP-BF16...
llama-server ^
-m F:\AI\models\Qwythos-9B-Claude-Mythos-5-1M-MTP-BF16.gguf ^
--mmproj F:\AI\models\mmproj-Qwythos-9B-Claude-Mythos-5-1M-f16.gguf ^
--spec-type draft-mtp --spec-draft-n-max 4 ^
--api-key "chris1798" ^
-ngl 99 ^
-c 262144 ^
--jinja ^
--tensor-split 40,60 ^
-fa on ^
--host 0.0.0.0 ^
--port 8080
goto end
:end

:M14
cls
echo 啟用 Qwen-AgentWorld-35B-A3B-UD-Q4_K_M...
llama-server ^
-m F:\AI\models\Qwen-AgentWorld-35B-A3B-UD-Q4_K_M.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 262144 ^
--jinja ^
--tensor-split 40,60 ^
-fa on ^
--host 0.0.0.0 ^
--port 8080
goto end
:end

:M15
cls
echo 啟用 ornith-1.0-35b-Q4_K_M...
llama-server ^
-m F:\AI\models\ornith-1.0-35b-Q4_K_M.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 262144 ^
--jinja ^
--tensor-split 40,60 ^
-fa on ^
--host 0.0.0.0 ^
--port 8080
goto end
:end

:M16
cls
echo 啟用 ornith-1.0-35b-Q8_0...
llama-server ^
-m F:\AI\models\ornith-1.0-35b-Q8_0.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 262144 ^
--jinja ^
--tensor-split 45,55 ^
-fa on ^
--host 0.0.0.0 ^
--port 8080
goto end
:end

:M17
cls
echo 啟用 ornith-1.0-35b-Q6_K...
llama-server ^
-m F:\AI\models\ornith-1.0-35b-Q6_K.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 262144 ^
--jinja ^
--tensor-split 45,55 ^
-fa on ^
--host 0.0.0.0 ^
--port 8080
goto end
:end

:M18
cls
echo 啟用 Qwen3.6-40B-Deck-Opus-NEO-CODE-HERE-2T-OT-Q4_K_M...
llama-server ^
-m F:\AI\models\Qwen3.6-40B-Deck-Opus-NEO-CODE-HERE-2T-OT-Q4_K_M.gguf ^
--mmproj F:\AI\models\mmproj-Qwen3.6-27B-BF16.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 131072 ^
--jinja ^
--image-min-tokens 1024 ^
--tensor-split 40,60 ^
--reasoning off ^
--reasoning-budget 256 ^
--flash-attn on ^
--batch-size 2048 ^
--ubatch-size 512 ^
--cache-type-k q8_0 ^
--cache-type-v q8_0 ^
--host 0.0.0.0 ^
--port 8080
goto end

:M19
cls
echo 啟用 Qwythos-9B-Claude-Mythos-5-1M-MTP-Q8_0...
llama-server ^
-m F:\AI\models\Qwythos-9B-Claude-Mythos-5-1M-MTP-Q8_0.gguf ^
--mmproj F:\AI\models\mmproj-Qwythos-9B-Claude-Mythos-5-1M-F16.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 131072 ^
--spec-type draft-mtp ^
--spec-draft-n-max 6 ^
--image-min-tokens 1024 ^
--jinja ^
--tensor-split 40,60 ^
--flash-attn on ^
--host 0.0.0.0 ^
--port 8080
goto end

:M20
cls
echo 啟用 ThinkingCap-Qwen3.6-27B-Q8_0...
llama-server ^
-m F:\AI\models\ThinkingCap-Qwen3.6-27B-Q8_0.gguf ^
--mmproj F:\AI\models\mmproj-ThinkingCap-Qwen3.6-27B-f16.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 131072 ^
--image-min-tokens 1024 ^
--jinja ^
--tensor-split 40,60 ^
--flash-attn on ^
--host 0.0.0.0 ^
--port 8080
goto end

:M21
cls
echo 啟用 ThinkingCap-Qwen3.6-27B-Q8_0...
llama-server ^
-m F:\AI\models\Agents-A1-Q4_K_M.gguf ^
--mmproj F:\AI\models\Agents-A1-mmproj.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 131072 ^
--image-min-tokens 1024 ^
--jinja ^
--tensor-split 40,60 ^
--flash-attn on ^
--host 0.0.0.0 ^
--port 8080
goto end

:M22
cls
echo 啟用 MiniCPM5-1B-Claude-Opus-Fable5-Thinking-Q4_K_M...
llama-server ^
-m F:\AI\models\MiniCPM5-1B-Claude-Opus-Fable5-Thinking-Q4_K_M.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 131072 ^
--jinja ^
--tensor-split 40,60 ^
--flash-attn on ^
--host 0.0.0.0 ^
--port 8080
goto end

:M23
cls
echo 啟用 Qwen3.5-0.8B-Q4_K_M...
llama-server ^
-m F:\AI\models\Qwen3.5-0.8B-Q4_K_M.gguf ^
--api-key "chris1798" ^
-ngl 99 ^
-c 131072 ^
--jinja ^
--tensor-split 40,60 ^
--flash-attn on ^
--host 0.0.0.0 ^
--port 8080
goto end

echo.
echo ==========================================
echo 服務啟用完成
echo.
echo 瀏覽器打开：
echo http://192.168.1.10:8080
echo or
echo http://127.0.0.1:8081
echo ==========================================
echo.

::其它參數  --chat-template-file F:\AI\models\chat_template.jinja ^

pause