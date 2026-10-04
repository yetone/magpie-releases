cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.894"
  sha256 arm:   "8b4af94aafc0e01e33981c05c3429ec4b24d925617249cab12a0701ca1f90f08",
         intel: "eee55658512d3f73ade354ed4c1512c50b7f71174179f08ae58042122fa1d360"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
