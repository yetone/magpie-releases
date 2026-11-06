class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3207/magpie-cli-darwin-arm64"
      sha256 "993273edfeaecd03acdaeec61cbb4106095530bd9d90ada57bb362f140c4e4a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3207/magpie-cli-darwin-amd64"
      sha256 "40bb7b35792bd63aed28c892882619966750229a7ce7a5d973c5ba1fcd1bc934"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3207/magpie-cli-linux-arm64"
      sha256 "fee75b183de2fc8fbe8c786d10e2262971fd987cb3be00b49e5d0cc2fa1914bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3207/magpie-cli-linux-amd64"
      sha256 "6a7833ca4b70a5676fa9521ecbb0bc8c46ba583db8452d6bd4a51f93c708db07"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
