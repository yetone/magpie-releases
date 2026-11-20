class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4590/magpie-cli-darwin-arm64"
      sha256 "a828ced91cb505f897fc3e72546382a380be2d583ba7864db028d76d8ac756d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4590/magpie-cli-darwin-amd64"
      sha256 "ad4818f5ebbb79c0696f8fa051b3f017e5a83c7eb8b55829a4eae66fbd8e9174"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4590/magpie-cli-linux-arm64"
      sha256 "2c3cd090720d48cfa7fdb2329273bb42c97f64001f69e3e6f76fc050313f2432"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4590/magpie-cli-linux-amd64"
      sha256 "6d914095f0dbf84d2740a7303b62d5472085277071346b80a86800762702b177"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
