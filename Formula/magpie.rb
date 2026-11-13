class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3999/magpie-cli-darwin-arm64"
      sha256 "3c5a9f8d6d7bd39bccdd9f758b582360f18a105bf3a3b335fcfd7e8cef49387a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3999/magpie-cli-darwin-amd64"
      sha256 "a11b214ce9db87c17d7edab709b2b8344a903c7401f53a72360c6896fcc9db6d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3999/magpie-cli-linux-arm64"
      sha256 "dea8a7f4ac33cdd938ca6e5f34912dbbd3fd7874c08cc4c8343046f86645c76a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3999/magpie-cli-linux-amd64"
      sha256 "efcb43599942ace03e636294631063a94f11024df5d4f36cd96060d5f09ac28a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
