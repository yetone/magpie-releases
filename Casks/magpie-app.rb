cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4181"
  sha256 arm:   "9a5a1eec8ec5ad54444837ea405a9cfcb7495ba5ece779a23e36107c80c2065f",
         intel: "3201642bf518efe5730b0c72d7c492855fe1aae8f76afe83d5f883331a1778fc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
