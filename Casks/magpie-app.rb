cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2348"
  sha256 arm:   "72257bbf6cc768a8986aae740a516e44aa46de2144e4499de5fcfd2fecde8d07",
         intel: "c52147243b30aa9a622671e0e2e0b38d69dca74d444add6f090129f67cb4631f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
