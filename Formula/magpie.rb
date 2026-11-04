class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2989/magpie-cli-darwin-arm64"
      sha256 "b49eb3f326c5d95a37b25f5de5bc09de7fe64b088e505b36a3ee7a0b3eda0b8f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2989/magpie-cli-darwin-amd64"
      sha256 "9f40fe98d06e6b5a32bcc9da369d436da32ea0ac1a7c4bbabdddd9cffc485d83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2989/magpie-cli-linux-arm64"
      sha256 "89c9202a7e8d0e277285aabff11d5d71cc8815dfa77251cd2ba3cbf7de6eaf8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2989/magpie-cli-linux-amd64"
      sha256 "88df81879ed91256e049136926502bbf302be932d12bac348313a5fa7440d524"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
