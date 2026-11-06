cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3119"
  sha256 arm:   "4ddeae6c8b1ffa64d7f57fdf8116b94b8b4d9f1642ca8de435aacb484e63b585",
         intel: "ebd67428052e392dd6471c05196dd1f9e381efefd4bd65529865ef4884c3f2b8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
