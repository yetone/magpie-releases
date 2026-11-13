cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4044"
  sha256 arm:   "b0978bba1fa5c1e6ca497a85677ca863aa6e8ef4cab26b5e8467afc353f2ff43",
         intel: "428336013ed44b03d0eaf2af85770237150786be3180f0dd76eb0dea799c255e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
