cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4824"
  sha256 arm:   "9c3c1bf38fff662271a3d95abd03d8f8b2b0f9a52f8330bf97e7563792c1f8be",
         intel: "aa9360b4ea0ac78b77e5f8defc0641a02b86175fc5164f03ba6be290473e2267"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
