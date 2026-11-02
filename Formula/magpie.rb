class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2664/magpie-cli-darwin-arm64"
      sha256 "9216db352eaf9de72010faa62fa238bf500fa462cec43eeabaafa2dae967a105"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2664/magpie-cli-darwin-amd64"
      sha256 "a0d1c1a876f4a18a1df8fa743414de3d5dd9c5ff2b8f7beefe6d7887f5788bf0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2664/magpie-cli-linux-arm64"
      sha256 "763cb2b9a8ff1228201605e4f9e6f6f68bee822ee9e2fcf4f352a9415b423eda"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2664/magpie-cli-linux-amd64"
      sha256 "85057a6c4089aeb156426fd9bac8a23bdee98e7328b250243a2da4e9ce3dd248"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
