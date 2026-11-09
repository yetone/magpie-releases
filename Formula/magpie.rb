class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3481/magpie-cli-darwin-arm64"
      sha256 "6572f268381263dc8bd5bdc0d48cec74dcadec82403f3c3be2213488a87793c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3481/magpie-cli-darwin-amd64"
      sha256 "1a9b2223a9379aeb6f157ac76bcbf7269c6608ba24dde046cd93986e6ad059b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3481/magpie-cli-linux-arm64"
      sha256 "04d0dfdfe30989b6d855b70d9ba46e1c373049259a3a3dcd2ada2b09e9577623"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3481/magpie-cli-linux-amd64"
      sha256 "3d84ae224c4ad5c34b126f8b4aca9414079144b104108e5aadbb4a1efb4fbb4d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
