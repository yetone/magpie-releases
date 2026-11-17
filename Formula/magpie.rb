class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4372/magpie-cli-darwin-arm64"
      sha256 "5fec4a39bf2c6022982c7a4929f90e10287292b07fc27dbe842cd3f64b495787"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4372/magpie-cli-darwin-amd64"
      sha256 "850020456b30a9a4d400c39a48f04cb3226aded1910730b7ba0d95966bcae69f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4372/magpie-cli-linux-arm64"
      sha256 "6d557217725b7a5bdacfc8cc2eadc8fccbb0de3a59e4ce4c725a02a643e30349"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4372/magpie-cli-linux-amd64"
      sha256 "57d3d18723683435e6238870d9ef160ac4b89a0c6c3cc3a8bc4f4332046ab140"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
