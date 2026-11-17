cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4399"
  sha256 arm:   "146e5fd31f7b7def7d6c4214248be70bf9553dbeec3b3f8e12b5b39dc2a45f5a",
         intel: "2d61a49d1dd47407dd2b3d88238c78aa39b0f900561bbcc3103e60881ba1f89c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
