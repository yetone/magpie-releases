class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.949/magpie-cli-darwin-arm64"
      sha256 "e07f12844c7c96a34837a23272b289170b2e1d00d1635994ca52974cef69df83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.949/magpie-cli-darwin-amd64"
      sha256 "8de1c845d3e49b4adbd4329545d0336d4b04ca5526a5649a1479cba128992cc2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.949/magpie-cli-linux-arm64"
      sha256 "303a0f86424d6d8dbfb451d8d4201370df8680ace819a5196135cd37728439ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.949/magpie-cli-linux-amd64"
      sha256 "e9953f13b280f38b5b60ecdd8a8598be1aa710f3702cb5199b7ab1179efabc19"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
