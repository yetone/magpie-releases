class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.969/magpie-cli-darwin-arm64"
      sha256 "9fe55a54b84cdd37093bcad1ebb0fafdbc4fb7ad4d40fa819323c09717c1a1b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.969/magpie-cli-darwin-amd64"
      sha256 "aaf6c073fae3c37b90b1974aac4f7b712592986ae88ac7818b68c55cf501d5f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.969/magpie-cli-linux-arm64"
      sha256 "f1aca0f1bdf81ae0915c92d73f027ae069784b217f9e691d05b704b36aa51c78"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.969/magpie-cli-linux-amd64"
      sha256 "3a83109558eb320968160157c1de4a1a667dc180b39f70779e106f0c8faacf6b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
