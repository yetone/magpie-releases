class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2371/magpie-cli-darwin-arm64"
      sha256 "81e69ab9c4d60af1c883f3e59aed3edfb06acb647f8fb4b11adcb52d356973e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2371/magpie-cli-darwin-amd64"
      sha256 "7397c84aeebcf9f3087729992cb3761dd427d6b9031ecd9328dc99a9670f6c40"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2371/magpie-cli-linux-arm64"
      sha256 "56554b0a0b9f41fbd1144843d556696f5c2f7740cc328b0714946592ee33a8db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2371/magpie-cli-linux-amd64"
      sha256 "a8d608f0253f8df58ce57cb28af5fd8b968d4b79fa125d43636c34d723f4675d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
