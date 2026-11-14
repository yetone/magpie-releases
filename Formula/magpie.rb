class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4200/magpie-cli-darwin-arm64"
      sha256 "b9cd5c0e5e39c59c6867bf764a433817c00d21630500ef4455fc8771697f6c9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4200/magpie-cli-darwin-amd64"
      sha256 "093b5bba2613b7340288c04ccf128b081791384eecca0a7399ca53c898df5e20"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4200/magpie-cli-linux-arm64"
      sha256 "b41637f76c8d740279dc577bf8ae72c5fe3b744ff773c48dd21be1c4e68b463c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4200/magpie-cli-linux-amd64"
      sha256 "c67f1779a333c4df8e429e94a9ef01d5fc251cc07f3f64e6e25bcba6a5333cf3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
