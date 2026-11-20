cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4590"
  sha256 arm:   "60c0f9ad8c6633dc89f1e5efdb30b486262c5f783db1487c14b805421de799d8",
         intel: "8a9025831da7e79720e2f47965fd17142e973b1539a1499000142073497a8d66"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
