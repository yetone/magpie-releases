cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2910"
  sha256 arm:   "ee63ce06d36fd20cfcc655d87e1081dd4cff14345eef7a8af66800d6800b8039",
         intel: "0a210b012e3923e1312c3ee1dd33bac519abfe6a4b1a160329cd86126526f9ae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
