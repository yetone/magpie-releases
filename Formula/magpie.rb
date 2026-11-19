class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4570/magpie-cli-darwin-arm64"
      sha256 "311a3156ec240885c2dc4318dae969a3f2fdf23ff95940f9db845e3c63271f15"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4570/magpie-cli-darwin-amd64"
      sha256 "9dbde8891aef81b065e43efd70c13bd1290c7c7e4e5d37b50352ed49b00830df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4570/magpie-cli-linux-arm64"
      sha256 "e57a38fde22519681081cd357408b5463da291880bc14a6d1b1901cc4ad1cc9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4570/magpie-cli-linux-amd64"
      sha256 "db1668d663971768a7ea5dc6c42e5f298a2f4420e67093a92d338c25ee587bb8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
