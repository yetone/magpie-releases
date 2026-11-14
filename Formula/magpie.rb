class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4109/magpie-cli-darwin-arm64"
      sha256 "f6a6bfbcdbee4fb6fd73bbd7ff634a264889cf9bd82d3d949db9be3e9b5af175"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4109/magpie-cli-darwin-amd64"
      sha256 "0857e61ae273828b250f36110609f590a19a6048d419a03e97d3a1789119a325"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4109/magpie-cli-linux-arm64"
      sha256 "839b3a48d16ebb938efe915fda2870c78206dd2a5f23bc7facbb974f34f64507"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4109/magpie-cli-linux-amd64"
      sha256 "c04879f1aefb750a084adc397d54ab05e8895818ff2cbbc87715b4759bc9ca5e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
