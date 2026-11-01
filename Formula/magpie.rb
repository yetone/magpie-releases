class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2650/magpie-cli-darwin-arm64"
      sha256 "ac3162e4fab833438e8d3ef41db984346fd589d39818a78f423733a2248ba2de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2650/magpie-cli-darwin-amd64"
      sha256 "c244c7c4475d626f7a26c14bfa9b2246c25f68783a78e6e98f27965a0340cbe0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2650/magpie-cli-linux-arm64"
      sha256 "b5fb6f6a7b9f38195e70caabf4a77a09022851fc6bdb08b0916bd38ea1b4c708"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2650/magpie-cli-linux-amd64"
      sha256 "1723312e66a6ff8f6b315744a26ac9428d753d93ee2fd86cf126306ab2115433"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
