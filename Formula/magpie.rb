class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3846/magpie-cli-darwin-arm64"
      sha256 "0171052c5b6a864daab1cca3598064e490f60afe1b08b8ad2304cba49fa52322"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3846/magpie-cli-darwin-amd64"
      sha256 "fd78dce69c9d2f400389cf943b2933b67f705087ff8353b38d19d42617050356"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3846/magpie-cli-linux-arm64"
      sha256 "579ee4bec0d9da91b39ea0a58878591b3ec3eaaf0474936a5251c853a76a4a60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3846/magpie-cli-linux-amd64"
      sha256 "910ef1cdef7dc6c4ff06c73103799c984e27413a6d994d06bb0edb7af91ad8d0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
