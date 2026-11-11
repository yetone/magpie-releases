cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3746"
  sha256 arm:   "d8c67f9daea892ec7bb0533064f77e64f2ce03d60b4f61a71bf1d32b67625d8a",
         intel: "9aae22b17dfdefcf94ef87e1a1152476e4af16d44e03381b697242d87860ed44"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
