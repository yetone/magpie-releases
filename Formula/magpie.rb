class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4732/magpie-cli-darwin-arm64"
      sha256 "f64dc6b970c3c463d0848364665852457ea7583b55bfd1a90e13ed16edc9b88d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4732/magpie-cli-darwin-amd64"
      sha256 "d97170c6bd69b03c55e515ada67f4b5e41bd44d713db3ae44e872aabb04d8378"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4732/magpie-cli-linux-arm64"
      sha256 "706508df1d7218bf4208ba2fcac81fbb9647ef2edd0c110a7ea42e5be19a3206"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4732/magpie-cli-linux-amd64"
      sha256 "c2e02cf2242bd77584fa0d6c04cb82cd64e785375c826e240bd3534ecef92683"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
