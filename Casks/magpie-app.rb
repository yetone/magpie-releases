cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2858"
  sha256 arm:   "8907886914e193ee3efa92bc27f56e3b682f07ab2419a78b0dfef79bc27791e8",
         intel: "0dbcf746441bbc2596b114da62425d71e86122245670292fb031d739f93076ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
