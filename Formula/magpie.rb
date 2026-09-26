class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.139/magpie-cli-darwin-arm64"
      sha256 "5e94213c91a054ad6c419ad81fcd96664ffb9fa5b8f3040315930d8d6bb0771b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.139/magpie-cli-darwin-amd64"
      sha256 "b8622c075cd99afb8a8c5504624332340cbebf201feebaa8bf1b5bf6d93c3a6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.139/magpie-cli-linux-arm64"
      sha256 "cba803c0091360c519535e4e62031fbc159c1be4fdbc364ef8ee69cbc27bff28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.139/magpie-cli-linux-amd64"
      sha256 "6e45f8e9d905d15f5c20434fc9856e9384588d27e483202d48df786581c8e18e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
