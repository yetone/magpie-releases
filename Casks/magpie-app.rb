cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4109"
  sha256 arm:   "b8c14c312b02854e549b8ba26a673181bece345620bcfbbf87ea8a04199c846b",
         intel: "5b9599ac7e3d3f7463d536840a4d40b954e6b86c3e0182751870945f3d1b9580"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
