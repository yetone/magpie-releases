class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4826/magpie-cli-darwin-arm64"
      sha256 "7062c0ec123a1fc8fec961218a770890a414efa29790442a30bec07c06f6a617"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4826/magpie-cli-darwin-amd64"
      sha256 "f769cf1f3fe2e50e8157a5d9956f166138979abf62f7674ffb6c215c9d8c56dd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4826/magpie-cli-linux-arm64"
      sha256 "31f7480ea02199c48af96874f970c9646d445de79b5a64b6886e941442410c63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4826/magpie-cli-linux-amd64"
      sha256 "102d5d6e0d564a830f41f7adfd86e72561ec22f2f40b8e55de660e43bd2c7a64"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
