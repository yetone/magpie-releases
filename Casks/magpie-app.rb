cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4373"
  sha256 arm:   "0b1b3b6d362d394f5b0209579b02810fa9cf52523382af31d77e94e73ad9af1a",
         intel: "801254a2dcc355aeb08648dd89ad88d7cd69f2793418e5b4d6e0b8dfa16cbe54"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
