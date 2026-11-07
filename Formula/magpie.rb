class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3258/magpie-cli-darwin-arm64"
      sha256 "c251dee3cd735af4b90753398a6649af326aa829f1ff2fc12014647db22441f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3258/magpie-cli-darwin-amd64"
      sha256 "27e3a7d16fdfaabda38c6b1a4219933651f88c7d31f28b65bbe6d49c33b8d95f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3258/magpie-cli-linux-arm64"
      sha256 "7f6a8c31025eb75263397a8c691c7a3ba5a8d9fc2d11842c3a23c908c054a30b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3258/magpie-cli-linux-amd64"
      sha256 "2801f803b8d59a89eec969ce56d00544eace141bc4e42889a55b3bed856fe2c6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
