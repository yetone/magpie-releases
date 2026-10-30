class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2208/magpie-cli-darwin-arm64"
      sha256 "c62376ef9210f0dbaa4cc42290a5d1a89bb288afd46c18b587962575ae68a2b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2208/magpie-cli-darwin-amd64"
      sha256 "40cde0fb236c1d6a2ad2fce19c09a674a0c3445177378baeb2c918b3a0360fbe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2208/magpie-cli-linux-arm64"
      sha256 "10a8580dbb6fc2cf225ad1096123cca21ecabeba7b4469b7e8cc7a42312d7594"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2208/magpie-cli-linux-amd64"
      sha256 "fd71eceb1743651084e7fb82f5925b50e92ab0c19ed1aba661fe608d93e2c361"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
