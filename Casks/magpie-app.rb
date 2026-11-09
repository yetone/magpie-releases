cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3415"
  sha256 arm:   "5185c8c60de7e771ac29f325d34fe4a5ad8d70410a3dbede38092eaeb4a91002",
         intel: "abbd3c6e2e13695916e00d7a7cf77e5decc3cf58fbfdb625601ccde95b664f84"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
