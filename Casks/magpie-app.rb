cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3531"
  sha256 arm:   "90704766470e86864e5ff58cf60e065e91ca3502acd7f2e063a9259c3c13ac31",
         intel: "d82f64d1a1a82bc04cbe6022e6836455b84e6ba6ba20cab226396b87821e3b6e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
