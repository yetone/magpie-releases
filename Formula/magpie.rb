class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2636/magpie-cli-darwin-arm64"
      sha256 "d1b3f32bafa212729b09f23594004d6be1152b58864e509d626284eedae1c52e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2636/magpie-cli-darwin-amd64"
      sha256 "9c091ea67a2962e58e1920d2ad6f2393c4673cd67dc784140f0445403ce201bb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2636/magpie-cli-linux-arm64"
      sha256 "7eda4cca5588c20bd08cb787aca96d042151958e7fce7e18bb3dc3ff13fb58db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2636/magpie-cli-linux-amd64"
      sha256 "62ad00e6b5e7c686e27bce35df8306adf92308280519feae18cee71fd37d7a41"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
