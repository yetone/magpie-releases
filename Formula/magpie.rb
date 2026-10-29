class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2034/magpie-cli-darwin-arm64"
      sha256 "f66c20bcdb00a1af8d11af75647e3aa72f0eaa9ee27bcf614a0d7f597d0a9d75"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2034/magpie-cli-darwin-amd64"
      sha256 "74a20ba7bf8e61abed02e45a443ecdac273cf8fbe67650c4ac112b9a3acfa123"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2034/magpie-cli-linux-arm64"
      sha256 "a8eace22d9105e2349d4d69abe20072abe7147063406e497d1c1e90cd4145b47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2034/magpie-cli-linux-amd64"
      sha256 "c3067c5a22447e1aabf3f6f78baa89e38aee3bfef961b8f873cdfb2e156f6a07"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
