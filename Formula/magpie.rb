class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4011/magpie-cli-darwin-arm64"
      sha256 "48cb7a7016f37be9e4bd6b1e36ebe0b11b0547a41d393f0bece65b58cb93006d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4011/magpie-cli-darwin-amd64"
      sha256 "1e7a524058c143f013ccc26e1f645e167e86165545ad79dd44f13a5f309af1b6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4011/magpie-cli-linux-arm64"
      sha256 "c94a95b8ce38e2134dd67087e52e5e17eb6317dafe58113b3d613870a000a2e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4011/magpie-cli-linux-amd64"
      sha256 "5412122210c0c4a3dc8f434a6efcaff8ec149b54ee8a2a3a95861839af2c6638"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
