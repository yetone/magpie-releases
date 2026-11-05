class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3060/magpie-cli-darwin-arm64"
      sha256 "eca6f54798bd111785aaa9bf905e0adde90ff18281e85efcdc70924f207ec2ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3060/magpie-cli-darwin-amd64"
      sha256 "2cc4ed1423a2b8a92a04e08221130f6549deaa27f4f421871017c9ba235e8d62"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3060/magpie-cli-linux-arm64"
      sha256 "3a4f625bd3468410e4ff9e7234b53655b5d7dc2bd1955dd1d71e9833330278c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3060/magpie-cli-linux-amd64"
      sha256 "66c773a0c3f5feb69e8cbd83f78ce6b0e2bf1cdab3cf80b6d906d0808696b890"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
