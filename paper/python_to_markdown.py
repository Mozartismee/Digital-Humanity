import PyPDF2

# 打開pdf檔案
with open('s10814-005-0002-9.pdf', 'rb') as file:
    reader = PyPDF2.PdfFileReader(file)

    # 讀取每頁的文字內容並將其存儲在markdown_text變量中
    markdown_text = ''
    for page_num in range(reader.numPages):
        page = reader.getPage(page_num)
        markdown_text += page.extractText()

# 將文字內容寫入.md檔案
with open('output.md', 'w', encoding='utf-8') as output_file:
    output_file.write(markdown_text)

print("PDF檔案已成功轉換為純文字並存儲為.md檔案")
