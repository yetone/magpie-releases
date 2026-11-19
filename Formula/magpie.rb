class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4553/magpie-cli-darwin-arm64"
      sha256 "0e670038a47bae59d3b110aac9241d65e86dd74cf8b3bde7fc66bcc2687d2cd6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4553/magpie-cli-darwin-amd64"
      sha256 "4b612e3aef8f43c8246f7d54075c56cbfb94cd862907e308dd11132c3d745644"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4553/magpie-cli-linux-arm64"
      sha256 "a884711e1e9381b15b9f4d68989386e0bb117487202f9123ddf8be5d9752a740"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4553/magpie-cli-linux-amd64"
      sha256 "48186034d9efd81c0a4139f12eb1b89d12437806719058f8b512a5ac9ed49a2a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
