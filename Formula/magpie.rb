class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3147/magpie-cli-darwin-arm64"
      sha256 "ba4e2190c94567d7916c921f53193aabdcda9c12b264a6bb4f28a9234ea7f6ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3147/magpie-cli-darwin-amd64"
      sha256 "1f6b4383bf73592c1acaef7ec3d1b301b9c0c955c1da8ba4b39d6f86ad66b773"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3147/magpie-cli-linux-arm64"
      sha256 "6ad4f805430db81943db2d71c06b6e91a35d15f5e283d9f2bcdabe39015c06f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3147/magpie-cli-linux-amd64"
      sha256 "74664f9fc3efcacd808c432061fd8b9eae7674162de87e94f91b477c048eb4b3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
