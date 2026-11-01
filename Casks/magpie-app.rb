cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2554"
  sha256 arm:   "1bb399100c4518e77156e8d39b75e7b12c03f87a69e7cb490a82b1151e2f3530",
         intel: "a68691cb196ca406a4e7283140d8752c51b314df9f1e394607deeb0d585e68c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
